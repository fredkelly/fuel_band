require 'httparty'

class FuelBand
  include HTTParty
  
  #debug_output $stdout
  
  # use SSL
  base_uri 'https://api.nike.com/v1.0/'
  
  format :json
  
  HEADERS = {
    'appid' => 'fuelband',
    'Accept' => 'application/json',
    'Content-Type' => 'application/json'
  }

  def initialize
    @end = Time.now
    @start = @end - 86400 # 1 days
  end
  
  # get fuel summary
  def summary
    self.class.get('/me/activities/summary/%s' % @start.strftime("%d%m%y"), query: params, headers: HEADERS)
  end
  
  def stats
    summary['daily'].first['summary']
  end
  
  private
  
  def params
    config.merge(
      'endDate' => @end.strftime("%d%m%y"),
      'fidelity' => 24 * 60 # no. of buckets to load
    )
  end
  
  def config
    YAML::load_file(File.dirname(__FILE__) + '/config.yml')
  end
end