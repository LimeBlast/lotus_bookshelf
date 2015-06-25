require 'spec_helper'
require_relative '../../../../apps/web/views/books/new'

describe Web::Views::Books::New do
  let(:params)    { Lotus::Action::Params.new({}) }
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/books/new.html.erb') }
  let(:view)      { Web::Views::Books::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'displays list of errors when params contains errors' do
    skip
    params.valid? # trigger validations

    rendered.must_include('There was a problem with your submission')
    rendered.must_include('title is required')
  end
end
