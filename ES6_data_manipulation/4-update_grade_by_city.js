// Returns an array of students for a specific city with their new grade
export default function updateStudentGradeByCity(list, city, newGrades) {
  // Array of students in a specific city
  const studentCity = list.filter((object) => object.location === city);

  // Update grades in studentCity
  return studentCity.map((object) => {
    const grades = newGrades.filter((grade) => grade.studentId === object.id);

    // Check if student has a grade
    let grade = 'N/A';
    if (grades.length > 0) {
      grade = grades[0].grade;
    }

    return {
      id: object.id,
      firstName: object.firstName,
      location: object.location,
      grade,
    };
  });
}
