require 'spec_helper'

describe "プロジェクト一覧ページ" do
  subject { page }
  describe "初期表示" do
    before { visit projects_path }
    it { should have_content('New Project') }

    describe "新規作成画面へ遷移" do
      before { click_link('New Project') }
      it { should have_content('New Project') }

      let(:submit) { "Create" }

      describe "validなデータの入力" do
        before do
          fill_in "Name", with: "Example Project"
        end

        it "新規プロジェクトができる" do
          expect { click_button submit }.to change(Project, :count).by(1)
        end
      end
    end

    describe "ページネーション" do
      before(:all) { 60.times{ FactoryGirl.create(:project) } }
      after(:all) { Project.delete_all }

      it { should have_selector('nav.pagination') }

      it "各プロジェクトのリストがあるべき" do
        Project.page(1).each do |project|
          expect(page).to have_selector('li', text: project.name)
        end
      end
    end
  end
end