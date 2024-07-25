export default function getStudentsByLocation(list, city) {
  return list.filter((object) => object.location === city);
}
