module ActiveRecord #:nodoc:
  module Acts #:nodoc:
    module Commentable
      def self.included(base) # :nodoc:
        base.extend ClassMethods
      end  
      
      module ClassMethods
        def acts_as_commentable
          send :include, CommentableEntity
        end    
      end   
    end
  end
end