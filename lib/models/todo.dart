class Task {
  String title;
  String content;
  bool done;

  Task(this.title, this.content, this.done);

  getTitle() => this.title;
  setTitle(title) => this.title = title;

  getContent() => this.content;
  setContent(content) => this.content = content;

  isDone() => this.done;
  setDone(done) => this.done = done;
}
