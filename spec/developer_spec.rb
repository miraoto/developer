require "spec_helper"

describe Developer do
  it "has a version number" do
    expect(Developer::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
