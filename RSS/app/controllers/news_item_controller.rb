class NewsItemController < ApplicationController

def feed
  # this will be the name of the feed displayed on the feed reader


@title = "RSS Feeder for Ignite Solutions"

  # the news items
  @news_items = NewsItem.order("updated_at desc")

  # this will be our Feed's update timestamp
  @updated = @news_items.first.updated_at unless @news_items.empty?

  respond_to do |format|
    format.atom { render :layout => false }
 #	format.rss { render :layout => false}
    # we want the RSS feed to redirect permanently to the ATOM feed
    format.rss { redirect_to feed_path(:format => :atom), :status => :moved_permanently }
  end

end


end
