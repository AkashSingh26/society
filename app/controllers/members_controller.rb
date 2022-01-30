class MembersController < ApplicationController
  before_action :set_member, only: %i[ show edit update destroy ]

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @building = Building.create name: "Diamond Tower"
    @member = @building.members.build(member_params)
    if @member.save!
      redirect_to @member
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to @member
    else
      redirect_to members_path
    end
  end

  def destroy
    if @member.delete! 
      redirect_to members_path
    end
  end

  

  private

  def set_member
    @member = Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(:room_no, :purchase_year, :mobile, :name)
  end
end
