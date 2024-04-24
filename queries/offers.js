const db = require("../db/dbconfig");

const getAllOffers = async () => {
  try {
    const allOffers = await db.any("SELECT * FROM offers");
    return allOffers;
  } catch (error) {
    return error;
  }
};

const getOfferById = async (id) => {
  try {
    const oneOffer = await db.one("SELECT * FROM offers WHERE id=$1", id);
    return oneOffer;
  } catch (error) {
    return error;
  }
};

const createOffer = async (offer) => {
  const { user_id, item_id, amount, message } = offer;
  try {
    const newOffer = await db.one(
      "INSERT INTO offers (user_id, item_id, amount, message) VALUES($1, $2, $3, $4) RETURNING *",
      [user_id, item_id, amount, message]
    );
    return newOffer;
  } catch (error) {
    return error;
  }
};

const deleteOfferById = async (id) => {
  try {
    const deletedOffer = await db.one(
      "DELETE FROM offers WHERE id = $1 RETURNING *",
      id
    );
    return deletedOffer;
  } catch (error) {
    return error;
  }
};

const updateOfferById = async (id, offer) => {
  const { user_id, item_id, amount, message } = offer;
  try {
    const updatedOffer = await db.one(
      "UPDATE offers SET user_id=$1, item_id=$2, amount=$3,  message=$4 WHERE id=$5 RETURNING *",
      [user_id, item_id, amount, message, id]
    );
    return updatedOffer;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllOffers,
  getOfferById,
  createOffer,
  deleteOfferById,
  updateOfferById,
};