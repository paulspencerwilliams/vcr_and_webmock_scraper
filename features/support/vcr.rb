require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
end

VCR.cucumber_tags do |t|
  t.tag  '@tag1'
  t.tags '@tag2', '@tag3'

  t.tag  '@tag3', :cassette => :options
  t.tags '@tag4', '@tag5', :cassette => :options
end

VCR.cucumber_tags do |t|
  t.tag  '@localhost_request' # uses default record mode since no options are given
  t.tags '@disallowed_1', '@disallowed_2', :record => :none
end
