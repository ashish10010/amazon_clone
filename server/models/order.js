const mongoose = require("mongoose");
const { productSchema } = require("./product");

const OrderSchema = mongoose.Schema({
  producs: [
    {
      product: productSchema,
      quantity: {
        type: Number,
        required: true,
      },
    },
  ],
  totalPrice: {
    type: Number,
    required: true,
  },
  address: {
    type: String,
    required: true,
  },
  userId: {
    required: true,
    type: String,
  },
  orderedAt: {
    type: Number,
    required: true,
  },
  // status -> 0 - pending, 1- completed, 2 - received, 3-> delivered!
  status: {
    type: Number,
    default: 0,
  },
});
const Order = mongoose.model("Order", OrderSchema);

module.exports = Order;
