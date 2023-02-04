class MemosController < ApplicationController

  before_action :set_memo, only: [:edit, :update, :destroy]

  def index
    @memos = Memo.all.order("created_at DESC")
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    set_memo
  end

  def update
    if @memo.update(memo_params)
      return redirect_to root_path
    else
      render "edit"
    end
  end

  def destroy
    if @memo.destroy
      return redirect_to root_path
    end
  end

  private
  def memo_params
    params.require(:memo).permit(:title, :memo).merge(user_id: current_user.id)
  end

  def set_memo
    @memo=Memo.find(params[:id])
  end
end
