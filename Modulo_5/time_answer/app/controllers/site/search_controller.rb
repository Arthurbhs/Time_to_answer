class Site::SearchController < ApplicationController

    def questions
        @questions = Question.includes(:answers)
        .where("lower(description) LIKE ?",
        "%#{params[:term].downcase}%")
        .page(params[:page])
        end
    end