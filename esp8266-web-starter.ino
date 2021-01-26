int dim = 0;
int pin = 13;
int fade = 5;

void setup() {
  pinMode(pin, OUTPUT);
}

void loop() {
  analogWrite(pin, ++dim);

  dim = dim + fade;

  if (dim <= 0 || dim >= 255) {
    fade = -fade;
  }
  delay(20);
}
