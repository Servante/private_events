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
end
