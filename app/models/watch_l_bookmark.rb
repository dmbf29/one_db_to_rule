class WatchLBookmark < ApplicationRecord
  belongs_to :watch_l_movie
  belongs_to :watch_l_list
end
