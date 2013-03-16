## Nike+ FuelBand API - Ruby client

### Get an API Access Token:

1. Log in to [Nike Developer](https://developer.nike.com/)
2. Go to API Console > Get my Access Token

### Usage (for now):

1. Rename `sample_config.yml` to `config.yml`.
2. Paste your access token in the placeholder in the config.

Load up IRB:
```ruby
	>> require 'fuel'
	=> true
	>> require 'awesome_print'
	=> true
	>> fuel = FuelBand.new
	#<FuelBand:0x007f864c68adb0 @end=2013-03-15 17:26:23 -0700, @start=2013-03-14 17:26:23 -0700>
	>> ap fuel.stats
  	{
	               "calories" => 1539,
	                  "steps" => 13514,
	               "distance" => 10.64092,
	             "activeTime" => 604,
	              "totalFuel" => 4013,
	          "avgFuelPerDay" => 4013,
	              "frequency" => "DAILY",
	              "startDate" => 1363219200000,
	           "activityType" => "ALL_DAY",
	     "lastKnownDailyGoal" => 3000.0,
	     "mostRecentTZOffset" => "-08:00",
	    "mostRecentDSTOffset" => "+01:00",
	                   "tags" => {},
	              "dailyGoal" => {
	                    "progress" => 4013.0,
	                 "targetValue" => 3000.0,
	        "dailyGoalsSuccessful" => 1,
	             "dailyGoalsTotal" => 1
    	}
	}
	=> nil
	>> ap fuel.summary
	{
		...
		<< HUGE explosion of data >>
		...
	}
```
