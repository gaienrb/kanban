require 'spec_helper'

describe "AuthenticationPages" do

  subject { page }

  describe "login page" do 
    before { visit signin_path }

    it { should have_content('ログイン') }
    it { should have_title('ログイン') }
  end

end
