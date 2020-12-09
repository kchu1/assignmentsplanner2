class AssignmentsController < ApplicationController
  def index
    matching_assignments = Assignment.all

    @list_of_assignments = matching_assignments.order({ :due => :asc })

    render({ :template => "assignments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_assignments = Assignment.where({ :id => the_id })

    @the_assignment = matching_assignments.at(0)

    render({ :template => "assignments/show.html.erb" })
  end

  def create
    the_assignment = Assignment.new
    the_assignment.assignment_type_id = params.fetch("query_assignment_type_id")    
    the_assignment.due = params.fetch("query_due")
    the_assignment.course_id = params.fetch("query_course_id")
    the_assignment.description = params.fetch("query_description")
    the_assignment.name = params.fetch("query_name")

    if the_assignment.valid?
      the_assignment.save
      redirect_to("/assignments", { :notice => "Assignment created successfully." })
    else
      redirect_to("/assignments", { :notice => "Assignment failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_assignment = Assignment.where({ :id => the_id }).at(0)

    the_assignment.assignment_type_id = params.fetch("query_assignment_type_id")
    the_assignment.due = params.fetch("query_due")
    the_assignment.course_id = params.fetch("query_course_id")
    the_assignment.description = params.fetch("query_description")
    the_assignment.name = params.fetch("query_name")

    if the_assignment.valid?
      the_assignment.save
      redirect_to("/assignments/#{the_assignment.id}", { :notice => "Assignment updated successfully."} )
    else
      redirect_to("/assignments/#{the_assignment.id}", { :alert => "Assignment failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_assignment = Assignment.where({ :id => the_id }).at(0)

    the_assignment.destroy

    redirect_to("/assignments", { :notice => "Assignment deleted successfully."} )
  end
end
