class Rack::Attack
  safelist('allow from valid ips') do |req|
    valid_ip_addresses.include? req.ip
  end

  def valid_ip_addresses
    [
      '62.232.106.226',
      '34.250.171.137',
      '52.51.160.179',
      '63.32.127.29',
      '34.247.249.220',
      '18.203.227.175',
      '18.203.205.196',
      '34.242.105.221',
      '52.50.60.26',
      '127.0.0.1'
    ]
  end
end