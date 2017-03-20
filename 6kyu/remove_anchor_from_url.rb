#remove anchorl from url
def remove_url_anchor(url)
  url.split('#').first
end

def remove_url_anchor(url)
  url.split("#").shift
end

def remove_url_anchor(url)
  # TODO: complete
  url.split('#')[0]
end
def remove_url_anchor(url)
  url.gsub(/#.*/, '')
end

=begin
describe "Solution" do
  it "should test for something" do
    Test.assert_equals(remove_url_anchor('www.codewars.com?page=1'), 'www.codewars.com?page=1')
     Test.assert_equals(remove_url_anchor('www.codewars.com#about'), 'www.codewars.com')
      Test.assert_equals(remove_url_anchor('www.codewars.com?page=1##'), 'www.codewars.com?page=1')
  end
end
=end

