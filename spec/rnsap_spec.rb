# frozen_string_literal: true

require 'spec_helper'
require 'yaml'
require_relative '../lib/rnsap'
require_relative '../lib/preq_detail/preq_item'

describe RnSap::Sap do
  let(:params) do
    file = File.expand_path(File.join(File.dirname(__FILE__), '..', 'secrets.yml'))
    YAML.safe_load(File.read(file))
  end

  let(:logon_info) do
    { 'user' => params['user'],
      'passwd' => params['password'],
      'trace' => params['trace'],
      'client' => params['client'],
      'ashost' => params['ashost'],
      'sysnr' => params['sysnr'] }
  end

  let(:test_data) do
    file = File.expand_path(File.join(File.dirname(__FILE__), '..', 'test_data.yml'))
    YAML.safe_load(File.read(file))
  end

  let(:conn) do
    RnSap::Sap.new(logon_info)
  end

  context 'Based on connection available parameters' do
    it 'connects to SAP' do
      expect(conn).not_to be_nil
    end
  end

  context 'Reads table information from SAP' do
    it 'gets at least one vendor' do
      list = conn.read_table('lfa1', %w[NAME1 LIFNR LAND1])
      expect(list.count).to be > 0
    end
    it 'gets at least one Raw material' do
      list = conn.read_table('mara', %w[matnr ernam], ["MTART = 'ROH'"])
      expect(list.count).to be > 0
    end

    it 'gets a two Raw materials skipping the first in the database' do
      list = conn.read_table({ name: 'mara', fields: %w[matnr ernam], clauses: ["MTART = 'ROH'"], row_skip: 1, row_count: 2 })
      expect(list.count).to eq(2)
    end
  end

  context 'Gets information from a Purchase Requisition' do
    it 'Obtains details from purchase requisition' do
      pr = test_data['preqs']['number']
      puts "    -> Pesquisando P.Req: #{pr}"
      details = conn.preq_detail(pr)

      expect(details).not_to be_nil 
      expect(details.class).to be(Array)
    end

    it 'gets purchase requisition Release Strategy info' do
      pr = test_data['preqs']['number']
      details = conn.preq_release_strategy_info(pr)

      expect(details).not_to be_nil 
      expect(details.class).to be(Array)
    end
  end

  context 'Gets information from a Purchase Order' do
    it 'Obtains details from purchase requisition' do
      po = test_data['po']['number']
      puts "    -> Pesquisando P.Order: #{po}"
      details = conn.po_detail(po)

      expect(details).not_to be_nil 
      expect(details.class).to be(Array)
    end

    it 'gets purchase requisition Release Strategy info' do
      po = test_data['po']['number']
      details = conn.po_release_strategy_info(po)

      expect(details).not_to be_nil 
      expect(details.class).to be(Array)
    end
  end

  
end
