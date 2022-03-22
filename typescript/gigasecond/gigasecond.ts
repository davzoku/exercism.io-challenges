export class Gigasecond {
  private time: Date;

  constructor(inputDate: Date) {
    this.time = new Date(inputDate.getTime() + 1e9 * 1000);
  }

  public date() {
    return this.time;
  }
}
