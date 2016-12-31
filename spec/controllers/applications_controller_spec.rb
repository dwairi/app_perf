# -*- encoding: utf-8 -*-

require 'rails_helper'

describe ApplicationsController, :type => :controller do
  login_user

  # TODO: auto-generated
  describe 'GET index' do
    it 'works' do
      create(:application, :user => subject.current_user)

      get :index
      expect(response.status).to eq(200)
    end
  end

  # TODO: auto-generated
  describe 'GET new' do
    it 'works' do
      get :new, {}, {}
      expect(response.status).to eq(200)
    end
  end

  # TODO: auto-generated
  describe 'GET edit' do
    it 'works' do
      application = create(:application, :user => subject.current_user)
      get :edit, :id => application
      expect(response.status).to eq(200)
    end
  end

  # TODO: auto-generated
  describe 'PUT update' do
    it 'works' do
      application = create(:application, :user => subject.current_user)
      put :update, :id => application, :application => { :name => "Test" }
      expect(response.status).to eq(302)
      expect(response).to redirect_to(applications_path)
    end
  end

  # TODO: auto-generated
  describe 'DELETE destroy' do
    it 'works' do
      application = create(:application, :user => subject.current_user)
      delete :destroy, :id => application
      expect(response.status).to eq(302)
      expect(response).to redirect_to(applications_path)
    end
  end

end
