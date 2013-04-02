require "spec_helper"
require "generators/phrase/install_generator"

describe Phrase::Generators::InstallGenerator do
  include GeneratorSpec::TestCase

  destination File.expand_path("../../../tmp", __FILE__)
  arguments %w()

  before(:all) do
    prepare_destination
    run_generator
  end

  it "creates an initializer for the phrase gem" do
    assert_file "config/initializers/phrase.rb", /Phrase.configure/i
  end

  it "should initialize the phrase gem" do

  end
  it "should set the correct locale path"
end
