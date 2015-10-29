class Article < ActiveRecord::Base

  def up_vote!
    commit_vote(:up)
  end

  def down_vote!
    commit_vote(:down)
  end

  private

  def commit_vote(up_down)
    Article.transaction do
      case up_down
      when :+
        self.vote += 1
      when :-
        self.vote -= 1
      end
      save
    end
  end
end
