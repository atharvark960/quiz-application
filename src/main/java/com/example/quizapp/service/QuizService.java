package com.example.quizapp.service;

import com.example.quizapp.entity.Answer;
import com.example.quizapp.entity.Question;
import com.example.quizapp.entity.QuestionWrapper;
import com.example.quizapp.entity.Quiz;
import com.example.quizapp.repository.QuestionRepository;
import com.example.quizapp.repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@Service
public class QuizService {

    @Autowired
    QuizRepository quizRepository;

    @Autowired
    QuestionRepository questionRepository;

    @SuppressWarnings("CallToPrintStackTrace")
    public ResponseEntity<String> createQuiz(String title, String category, Integer numQuestions) {
        try {
            List<Question> questions = questionRepository.findRandomQuestionsByCategory(category, numQuestions);

            Quiz quiz = new Quiz();
            quiz.setTitle(title);
            quiz.setQuestions(questions);
            quizRepository.save(quiz);

            return new ResponseEntity<>("Success", HttpStatus.CREATED);
        } catch (Exception e) {
            e.printStackTrace();

            return new ResponseEntity<>("Error", HttpStatus.BAD_REQUEST);
        }
    }

    public ResponseEntity<List<QuestionWrapper>> getQuiz(Integer id) {
        Optional<Quiz> quiz = quizRepository.findById(id);
        try {
            List<Question> questionsFromDB = null;
            if (quiz.isPresent()) {
                questionsFromDB = quiz.get().getQuestions();
            }
            List<QuestionWrapper> questionWrappers = new ArrayList<>();

            if (questionsFromDB != null) {
                for (Question q : questionsFromDB) {
                    QuestionWrapper qw = new QuestionWrapper(q.getId(), q.getQuestionTitle(), q.getOption1(), q.getOption2(), q.getOption3(), q.getOption4());
                    questionWrappers.add(qw);
                }
            } else {
                throw new NoSuchElementException();
            }

            return new ResponseEntity<>(questionWrappers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(new ArrayList<>(), HttpStatus.BAD_REQUEST);
        }
    }

    public ResponseEntity<Integer> calculateResult(Integer id, List<Answer> answers) {
        Integer correctAnswers = 0;

        for (Answer ans : answers) {
            Question question = questionRepository.findById(ans.getId()).get();

            if (ans.getAnswer().equals(question.getRightAnswer())) {
                correctAnswers++;
            }
        }

        return new ResponseEntity<>(correctAnswers, HttpStatus.OK);
    }
}
