class Clock {
  constructor() {
    this.date = new Date()
    this.hours = this.date.getHours().toString().padStart(2, '0')
    this.minutes = this.date.getMinutes().toString().padStart(2, '0')
    this.seconds = this.date.getSeconds().toString().padStart(2, '0')
    setInterval(() => this.printTime(), 1000)
    setInterval(() => this._tick(), 1000)
  }

  printTime() {
    console.log(`${this.hours}:${this.minutes}:${this.seconds}`)
  }

  _tick() {
    this.date = new Date()
    this.hours = this.date.getHours().toString().padStart(2, '0')
    this.minutes = this.date.getMinutes().toString().padStart(2, '0')
    this.seconds = this.date.getSeconds().toString().padStart(2, '0')
  }
}

const clock = new Clock()
