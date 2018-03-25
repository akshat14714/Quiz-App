json.extract! question, :id, :number, :ques, :optA, :optB, :optC, :optD, :answer, :sub_genre_id, :created_at, :updated_at
json.url question_url(question, format: :json)
