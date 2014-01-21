require 'spec_helper'

describe "プロジェクト一覧ページ" do
  subject { page }
  describe "プロジェクトがない場合" do
    before { visit projects_path }
    it { should have_content('New Project') }

    describe "新規作成画面へ遷移" do
      before { click_link('New Project') }
      it { should have_content('New Project') }
    end
  end
end