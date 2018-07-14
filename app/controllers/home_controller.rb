class HomeController < ApplicationController
  def top
    @post = Post.all
  end

  def create
    @post = Post.new(nama: params[:nama], finish: 0)
    if @post.save
      redirect_to("/")
    else
      flash[:notice] = "タスク名を入力してください。"
      redirect_to("/")
    end
  end
def destroy
  @post = Post.find_by(id: params[:id])
  @post.destroy
  redirect_to("/")
  
end


  def finish
    @post = Post.find_by(id: params[:id])
    @post.finish = "1"
    @post.save
    redirect_to("/")
  end
  def unfinish
    @post = Post.find_by(id: params[:id])
    @post.finish = 0
    @post.save
    redirect_to("/")
  end

end
