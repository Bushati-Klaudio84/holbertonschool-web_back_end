// Returns a new ArrayBuffer with an Int8 value at a specific position
export default function createInt8TypedArray(length, position, value) {
  const buffer = new ArrayBuffer(length);
  const Int8View = new Int8Array(buffer);

  if (position > Int8View.length || position < 0) {
    throw new Error('Position outside range');
  }
  Int8View[position] = value;
  return new DataView(buffer);
}
