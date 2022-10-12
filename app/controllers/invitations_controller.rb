class InvitationsController < ApplicationController
  def create
    event = Event.find(params[:id])
    @invitation = event.invitations.build({attendee_id: current_user.id})

    if @invitation.save
      current_user.invitations << @invitation
      redirect_to event
    else
      render :show, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    invite = event.invitations.select {|invite| invite.attendee_id == current_user.id}
    invite[0].destroy
    redirect_to root_path
  end
end
