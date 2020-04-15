abstract class ChangeEvents {}

class PageChangeEvent extends ChangeEvents {
  PageChangeEvent({this.index});
  int index;
}
