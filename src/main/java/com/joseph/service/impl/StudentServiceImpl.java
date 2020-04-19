package com.joseph.service.impl;

import java.util.List;

import com.joseph.dao.StudentDao;
import com.joseph.model.Student;
import com.joseph.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	@Transactional
	public void add(Student student) {
		studentDao.add(student);

	}
	@Transactional
	public void delete(int studentId) {
		studentDao.delete(studentId);

	}
	@Transactional
	public void edit(Student student) {
		studentDao.edit(student);

	}
	@Transactional
	public List<Student> getAllStudent() {
		return studentDao.getAllStudent();
	}
	@Transactional
	public Student getStudent(int studentId) {
		
		return studentDao.getStudent(studentId);
	}

}
