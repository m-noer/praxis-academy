main() {
  DataHolder<String> dataHolder = new DataHolder('Some Data');
  print(dataHolder.getData());
  dataHolder.setData('New Data');
  print(dataHolder.getData());

  DataHolder<int> dataHolder2 = new DataHolder(1);
  print(dataHolder2.getData());
  dataHolder2.setData(32);
  print(dataHolder2.getData());
}

class DataHolder<T> {
  T data;

  DataHolder(this.data);

  getData() {
    return data;
  }

  setData(data) {
    this.data = data;
  }
}
