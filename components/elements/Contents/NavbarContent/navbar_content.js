import React from "react";
import { WrapperNavbar, WrapperBg, NavbarListBox } from "./style";
import Image from "next/image";
import { useRouter } from "next/router";
import { useCookies } from "react-cookie";
import Cookies from "js-cookie";
import { DesktopOnly, MobileOnly, HeaderMobile } from "../../../styles/global";

import logo from "../../../../static/images/logo.png";
import logoList from "../../../../static/images/icon-register-list.png";
import logoSetting from "../../../../static/images/icon-register-setting.png";
import logoHambergerMenu from "../../../../static/images/icon-hamberger.png";
import logoLogoutWhite from "../../../../static/images/icon-logout-white.png";
import Link from "next/link";

const NavbarContent = (props) => {
  const router = useRouter();
  const [cookieToken, setCookieToken, removeCookie] = useCookies([
    "userId",
    "accessToken",
    "firstName",
    "lastName",
    "profileImagePath",
    "roleName",
  ]);

  const openNav = () => {
    console.log("openNav");
    document.getElementById("mySidepanel").style.width = "250px";
  };

  const closeNav = () => {
    document.getElementById("mySidepanel").style.width = "0";
  };

  const handleLogout = () => {
    Cookies.remove("userId");
    Cookies.remove("accessToken");
    Cookies.remove("firstName");
    Cookies.remove("lastName");
    Cookies.remove("profileImagePath");
    Cookies.remove("roleName");
    router.push("/admin");
  };

  return (
    <>
      <DesktopOnly>
        <WrapperNavbar>
          <div className="row">
            <div className="col-2 col-md-3" style={{ position: "relative" }}>
              <WrapperBg>
                <div className="logo-image-style">
                  <Image src={logo} alt={`logo`}/>
                </div>
                <Link href="/admin/register-list" passHref>
                  <NavbarListBox
                    active={
                      router.pathname === "/admin/register-list" ||
                      router.pathname === "/admin/register-list-add" ||
                      router.pathname === "/admin/register-list-edit" ||
                      router.pathname === "/admin/register-list-info"
                    }
                  >
                    <Image src={logoList} alt={`logoList`}/>
                    <span>ทะเบียนผู้ป่วย</span>
                  </NavbarListBox>
                </Link>
                {cookieToken.roleName === "administrator" && (
                    <Link href="/admin/register-setting" passHref>
                      <NavbarListBox
                        active={
                          router.pathname === "/admin/register-setting" ||
                          router.pathname === "/admin/register-setting-add" ||
                          router.pathname === "/admin/register-setting-edit"
                        }
                      >
                        <Image src={logoSetting} alt={`logoSetting`}/>
                        <span>ตั้งค่าผู้ใช้งาน</span>
                      </NavbarListBox>
                    </Link>
                  )}
              </WrapperBg>
            </div>
            <div className="col-10 col-md-9" style={{ position: "relative" }}>
              {props.children}
            </div>
          </div>
        </WrapperNavbar>
      </DesktopOnly>
      <MobileOnly>
        <HeaderMobile>
          <div className="hamberger-image-style" onClick={() => openNav()}>
            <Image src={logoHambergerMenu} />
          </div>
          <div className="logo-image-style">
            <Image src={logo} />
          </div>
        </HeaderMobile>
        <div id="mySidepanel" className="sidepanel">
          <a className="closebtn" onClick={() => closeNav()}>
            ×
          </a>
          <div
            style={{
              display: "flex",
              flexDirection: "column",
              justifyContent: "space-between",
              height: "100%",
              paddingBottom: 10,
            }}
          >
            <div>
              <NavbarListBox
                active={
                  router.pathname === "/admin/register-list" ||
                  router.pathname === "/admin/register-list-add" ||
                  router.pathname === "/admin/register-list-edit" ||
                  router.pathname === "/admin/register-list-info"
                }
              >
                <Image src={logoList} />
                <span>ทะเบียนผู้ป่วย</span>
              </NavbarListBox>

              {cookieToken.roleName &&
                cookieToken.roleName === "administrator" && (
                  <NavbarListBox
                    active={
                      router.pathname === "/admin/register-setting" ||
                      router.pathname === "/admin/register-setting-add" ||
                      router.pathname === "/admin/register-setting-edit"
                    }
                  >
                    <Image src={logoSetting} />
                    <span>ตั้งค่าผู้ใช้งาน</span>
                  </NavbarListBox>
                )}
            </div>
            <NavbarListBox onClick={() => handleLogout()}>
              <Image src={logoLogoutWhite} />
              <span>ออกจากระบบ</span>
            </NavbarListBox>
          </div>
        </div>
        {props.children}
      </MobileOnly>
    </>
  );
};

export default NavbarContent;
