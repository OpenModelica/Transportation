within TransportationModel.Icons;
model CarsIcon
equation

annotation(
    Icon(graphics = {Bitmap(origin = {1, 0}, extent = {{-99, -100}, {99, 100}}, imageSource = "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")}));
end CarsIcon;
