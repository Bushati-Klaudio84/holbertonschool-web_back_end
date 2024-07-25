export default function getStudentIdsSum(list) {
  return list.reduce((sum, object) => sum + object.id, 0);
}
