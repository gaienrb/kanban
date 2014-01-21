require 'spec_helper'

describe User do

  before { @user = User.new(name: "Yamada TARO", email: "yamada@example.co.jp") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
end
