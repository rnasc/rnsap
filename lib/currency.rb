class Currency

  def self.convert_amount_from_to(conn, amount, from_curr, to_curr, date)
    convert_currency_amount({conn: conn, amount: amount, from_curr: from_curr, to_curr: to_curr, date: date})
  end
  def self.convert_currency_amount(*options)
    
    return 0.0 unless options
    return 0.0 unless options.class == Array

    params = options.first

    rate_type = params[:rate_type] ? params[:rate_type] : 'M'
    date = params[:date] ? params[:date] : Date.today
    conn = params[:conn]
    from_curr = params[:from_curr]
    to_curr = params[:to_curr]
    amount = params[:amount]

    return 0.0 unless (conn && from_curr && to_curr && amount)

    fname = conn.conn.get_function('RPM_CONVERT_CURRENCY_AMOUNT')
    fcall = fname.get_function_call

    fcall[:IV_RATE_TYPE] = rate_type
    fcall[:DATE] = date
    fcall[:IV_FROM_CURR] = from_curr
    fcall[:IV_TO_CURR] = to_curr
    fcall[:IV_AMOUNT] = amount

    fcall.invoke
    
    fcall[:EV_AMOUNT].to_f
  end
end