class PaginationHelper

    # The constructor takes in an array of items and a integer indicating how many
    # items fit within a single page
    def initialize(collection, items_per_page)
        @pages = collection.each_slice(items_per_page).to_a
    end
  
    # returns the number of items within the entire collection
    def item_count
        @pages.reduce(0) { |accumulator, page| accumulator + page.size }
    end
      
    # returns the number of pages
    def page_count
        @pages.size
    end
  
    # returns the number of items on the current page. page_idx is zero based.
    # this method should return -1 for page_idx values that are out of range
    def page_item_count(page_idx)
        return -1 if page_idx < 0 || page_idx > @pages.size - 1 || @pages.size == 0
        @pages[page_idx].size
    end
  
    # determines what page an item is on. Zero based indexes.
    # this method should return -1 for item_index values that are out of range
    def page_index(item_index)
        return -1 if item_index >= item_count || item_index < 0
        items_per_page = @pages.first.size
        item_index / items_per_page
    end
end