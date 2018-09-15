# created to enable the requirement of exercise for LHL.

require 'yaml'

yaml_data = YAML::load(ERB.new(IO.read(File.join(Rails.root, 'config', 'local_env.yml'))).result)
APP_CONFIG = HashWithIndifferentAccess.new(yaml_data)