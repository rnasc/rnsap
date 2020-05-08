# frozen_string_literal: true

require 'spec_helper'
require 'yaml'
require_relative '../lib/rnsap'

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

  context 'Based on connection available parameters' do
    it 'connects to SAP' do
      conn = RnSap::Sap.new(logon_info)
      expect(conn).not_to eq(nil)
      conn.close
    end
  end

  context 'Reads table information from SAP' do
    it 'passing only Vendor table and some fields' do
      conn = RnSap::Sap.new(logon_info)
      list = conn.read_table('lfa1', %w[NAME1 LIFNR LAND1])
      expect(list.count).to be > 0
    end
    it 'passing Material table, fields and filter for Raw Materials' do
      conn = RnSap::Sap.new(logon_info)
      list = conn.read_table('mara', %w[matnr ernam], ["MTART = 'ROH'"])
      expect(list.count).to be > 0
    end

    it 'passing hash parameter with table, fields, filter, records to skip and max number of records' do
      conn = RnSap::Sap.new(logon_info)
      list = conn.read_table({ name: 'mara', fields: %w[matnr ernam], clauses: ["MTART = 'ROH'"], row_skip: 1, row_count: 2 })
      expect(list.count).to eq(2)
    end
  end
end
