require 'rails_helper'

RSpec.describe GiphyImage do

  let(:args) { {
    "type"=>"gif",
    "id"=>"l2JJuwsAYbJ85SePe",
    "slug"=>"happy-leapday-happyleapday-l2JJuwsAYbJ85SePe",
    "url"=>"http://giphy.com/gifs/happy-leapday-happyleapday-l2JJuwsAYbJ85SePe",
    "bitly_gif_url"=>"http://gph.is/1Uub2dC",
    "bitly_url"=>"http://gph.is/1Uub2dC",
    "embed_url"=>"http://giphy.com/embed/l2JJuwsAYbJ85SePe",
    "username"=>"theorystudios",
    "source"=>"https://theoryanimation.com/watch/rnc",
    "rating"=>"pg",
    "content_url"=>"",
    "user"=>{
      "avatar_url"=>"https://media1.giphy.com/avatars/theoryanimation/0zYcwveL6GXR.jpg",
      "banner_url"=>"", "profile_url"=>"https://giphy.com/theorystudios/",
      "username"=>"theorystudios",
      "display_name"=>"Theory Studios ",
      "twitter"=>"@theoryanimation"
    },
    "source_tld"=>"theoryanimation.com",
    "source_post_url"=>"https://theoryanimation.com/watch/rnc",
    "import_datetime"=>"2016-02-29 15:18:04",
    "trending_datetime"=>"2016-02-29 15:33:25",
    "images"=> {
      "fixed_height"=> { "url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200.gif", "width"=>"200", "height"=>"200", "size"=>"688305", "mp4"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200.mp4", "mp4_size"=>"84735", "webp"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200.webp", "webp_size"=>"890820" },
      "fixed_height_still"=> { "url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200_s.gif", "width"=>"200", "height"=>"200" },
      "fixed_height_downsampled" => { "url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200_d.gif", "width"=>"200", "height"=>"200", "size"=>"38399", "webp"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200_d.webp", "webp_size"=>"51432" },
      "fixed_width"=> { "url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200w.gif", "width"=>"200", "height"=>"200", "size"=>"688305", "mp4"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200w.mp4", "mp4_size"=>"84735", "webp"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200w.webp", "webp_size"=>"890820" },
      "fixed_width_still"=> { "url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200w_s.gif", "width"=>"200", "height"=>"200" },
      "fixed_width_downsampled"=> { "url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200w_d.gif", "width"=>"200", "height"=>"200", "size"=>"38399", "webp"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/200w_d.webp", "webp_size"=>"51432" },
      "fixed_height_small"=> { "url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/100.gif", "width"=>"100", "height"=>"100", "size"=>"192730", "mp4"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/100.mp4", "mp4_size"=>"37234", "webp"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/100.webp", "webp_size"=>"346540"},
      "fixed_height_small_still"=> { "url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/100_s.gif", "width"=>"100", "height"=>"100"},
      "fixed_width_small"=>{"url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/100w.gif", "width"=>"100", "height"=>"100", "size"=>"192730", "mp4"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/100w.mp4", "mp4_size"=>"37234", "webp"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/100w.webp", "webp_size"=>"346540"},
      "fixed_width_small_still"=>{"url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/100w_s.gif", "width"=>"100", "height"=>"100"},
      "downsized"=>{"url"=>"http://media.giphy.com/media/l2JJuwsAYbJ85SePe/giphy-tumblr.gif", "width"=>"480", "height"=>"480", "size"=>"1764093"},
      "downsized_still"=>{"url"=>"http://media.giphy.com/media/l2JJuwsAYbJ85SePe/giphy-tumblr_s.gif", "width"=>"480", "height"=>"480"},
      "downsized_large"=>{"url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/giphy.gif", "width"=>"480", "height"=>"480", "size"=>"3694786"},
      "downsized_medium"=>{"url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/giphy.gif", "width"=>"480", "height"=>"480", "size"=>"3694786"},
      "original"=>{"url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/giphy.gif", "width"=>"480", "height"=>"480", "size"=>"3694786", "frames"=>"145", "mp4"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/giphy.mp4", "mp4_size"=>"294402", "webp"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/giphy.webp", "webp_size"=>"2850530"},
      "original_still"=>{"url"=>"http://media2.giphy.com/media/l2JJuwsAYbJ85SePe/giphy_s.gif", "width"=>"480", "height"=>"480"},
      "looping"=> { "mp4"=>"http://media.giphy.com/media/l2JJuwsAYbJ85SePe/giphy-loop.mp4"}
    }
  }}

  let(:subject) { JSON.parse(args.to_json, object_class: GiphyImage) }

  describe "#url_for" do

    context "static" do
      it { expect(subject.url_for(:static)).to eq(args["images"]["fixed_width"]["url"]) }
    end

    context "source" do
      it { expect(subject.url_for(:source)).to eq(args["url"]) }
    end

    context "gif" do
      it { expect(subject.url_for(:gif)).to eq(args["images"]["original"]["url"]) }
    end

    context "without a valid argument" do
      it { expect(subject.url_for(:whatever)).to be_nil }
    end
  end
end
