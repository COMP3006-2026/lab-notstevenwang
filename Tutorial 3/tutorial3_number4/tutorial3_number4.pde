size(400, 400);

for (int x = 0; x < width; x++) {
  float n = norm(x, 0.0, float(width)); // (x-0) / (float(width)-0) // use norm if we want to have a value that originally is huge, and convert to range of 0-1
  float y = pow(n, 4);                  // n^4
  y = y*width;                          // y*width
  point(x, y);                          // draw
}
