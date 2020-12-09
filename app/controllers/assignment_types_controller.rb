class AssignmentTypesController < ApplicationController
  def index
    matching_assignment_types = AssignmentType.all

    @list_of_assignment_types = matching_assignment_types.order({ :created_at => :desc })

    render({ :template => "assignment_types/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_assignment_types = AssignmentType.where({ :id => the_id })

    @the_assignment_type = matching_assignment_types.at(0)

    render({ :template => "assignment_types/show.html.erb" })
  end

  def create
    the_assignment_type = AssignmentType.new
    the_assignment_type.assignment_type = params.fetch("query_assignment_type")

    if the_assignment_type.valid?
      the_assignment_type.save
      redirect_to("/assignment_types", { :notice => "Assignment type created successfully." })
    else
      redirect_to("/assignment_types", { :notice => "Assignment type failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_assignment_type = AssignmentType.where({ :id => the_id }).at(0)

    the_assignment_type.assignment_type = params.fetch("query_assignment_type")

    if the_assignment_type.valid?
      the_assignment_type.save
      redirect_to("/assignment_types/#{the_assignment_type.id}", { :notice => "Assignment type updated successfully."} )
    else
      redirect_to("/assignment_types/#{the_assignment_type.id}", { :alert => "Assignment type failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_assignment_type = AssignmentType.where({ :id => the_id }).at(0)

    the_assignment_type.destroy

    redirect_to("/assignment_types", { :notice => "Assignment type deleted successfully."} )
  end
end
