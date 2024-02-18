import React from "react";

import "./Footer2.css";
import { Link } from "react-router-dom";
const Footer2 = () => {
  return (
    <div className="footer">
      <div className="footerin1">
        <div className="f1">
          <img src={"/assets/IndiKart.png"} alt="indi" />
          <p>
            INDIGI-Kart is a “one-stop store” of celebrated products having
            geographical origin (GI Tag). Our motto is “from the very land to
            your hand”.{" "}
          </p>
          <div>
            <a href="https://www.instagram.com/" target="_blank">
              <img
                src={"/assets/INSTA.jpg"}
                alt="social"
                className="social"
                style={{
                  maxWidth: "40px",
                  maxHeight: "40px",
                  borderRadius: "100%",
                }}
              />
            </a>
            <span>&nbsp;&nbsp;</span>
            <a href="https://www.facebook.com/" target="_blank">
              <img
                src={"/assets/FB.jpg"}
                alt="social"
                className="social"
                style={{
                  maxWidth: "40px",
                  maxHeight: "40px",
                  borderRadius: "100%",
                }}
              />
            </a>
            <span>&nbsp;&nbsp;</span>
            <a href="https://www.youtube.com/" target="_blank">
              <img
                src={"/assets/YOUTUBE.jpg"}
                alt="social"
                className="social"
                style={{
                  maxWidth: "40px",
                  maxHeight: "40px",
                  borderRadius: "100%",
                }}
              />
            </a>
          </div>
        </div>
        <div className="f2">
          <h3>About Us</h3>
          <Link to="/" className="stylenone">
            <p>About us</p>
          </Link>
          <Link to="/" className="stylenone">
            <p>Contact us</p>
          </Link>
          <p>Customer Support</p>
        </div>
        <div className="f2">
          <h3>Our Information</h3>
          <Link to="/" className="stylenone">
            <p>Privacy policy</p>
          </Link>
          <Link to="/" className="stylenone">
            <p>Terms & conditions</p>
          </Link>
        </div>
        <div className="f2">
          <h3>Community</h3>
          <p>Announcements</p>
          <p>Answer center</p>
          <p>Discussion boards</p>
          <p>Giving works</p>
        </div>
      </div>
      <div className="footerin2">
        <h3>
          <b>© Copyright 2024 INDIGI-KART. All rights reserved</b>
        </h3>
      </div>
    </div>
  );
};

export default Footer2;
