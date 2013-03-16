## Nike+ FuelBand API Ruby client

### Get an API Access Token:

1. Log in to [Nike Developer](https://developer.nike.com/)
2. > API Console > Get my Access Token

### Usage (for now):

1. Rename `sample_config.yml` to `config.yml`.
2. Paste your access token in the placeholder in the config.
3. Load up IRB:

    irb -I .
    require 'fuel'
    require 'awesome_print'
    fuel = FuelBand.new
    ap fuel.stats
  
