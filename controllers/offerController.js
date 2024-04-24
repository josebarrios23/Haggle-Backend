const express = require("express");
const offers = express.Router();

const {
  getAllOffers,
  getOfferById,
  createOffer,
  deleteOfferById,
  updateOfferById,
} = require("../queries/offers");

offers.get("/", async (req, res) => {
  try {
    const allOffers = await getAllOffers();
    res.status(200).json(allOffers);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

offers.get("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const offer = await getOfferById(id);
    if (offer) {
      res.status(200).json(offer);
    } else {
      res.status(404).json({ error: "Offer not found with this ID" });
    }
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

offers.post("/", async (req, res) => {
  try {
    const newOffer = await createOffer(req.body);
    res.status(201).json(newOffer);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

offers.put("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const updatedOffer = await updateOfferById(id, req.body);
    res.status(200).json(updatedOffer);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

offers.delete("/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const deletedOffer = await deleteOfferById(id);
    res.status(200).json(deletedOffer);
  } catch (error) {
    res.status(404).json({ error: "Offer not found with this ID" });
  }
});

module.exports = offers;