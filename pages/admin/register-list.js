import React, { useState, useEffect } from "react";
import {
  HeaderContent,
  TableContent,
  ModalConfirmContent,
  PaginationContent,
} from "../../components/elements";
import {
  TabHeader,
  ButtonTheme,
  BackgroundAdmin,
  TableStyle,
  WrapperTable,
  BackgroundEdit,
  BackgroundDelete,
  DesktopOnly,
  MobileOnly,
  TableMobileStyle,
} from "../../components/styles/global";
import Image from "next/image";
import Link from 'next/link'
import moment from "moment";
import { apiGatewayInstance } from "../../helpers/utils";
import { useCookies } from "react-cookie";
import { useRouter } from "next/router";
import { pathExportUrl } from "../../config";

import logoRegisterNew from "../../static/images/icon-register-new.png";
import logoEdit from "../../static/images/icon-edit.png";
import logoDelete from "../../static/images/icon-delete.png";

const RegisterListScreen = () => {
  const router = useRouter();
  const [cookieToken, setCookieToken] = useCookies([
    "userId",
    "accessToken",
    "roleName",
  ]);
  const [showModal, setShowModal] = useState(false);
  const [id, setId] = useState("");
  const [userList, setUserList] = useState([]);
  const [searchList, setSearchList] = useState("");
  const [totalPages, setTotalPages] = useState(0);
  const [currentPage, setCurrentPage] = useState(1);
  const [sorting, setSorting] = useState("DESC");

  useEffect(() => {
    if (!cookieToken.accessToken) {
      router.push("/admin");
    }
  }, []);

  useEffect(() => {
    const getDataUserList = async () => {
      const { content = [], totalPages = 0 } =
        (await getUserList(1, 10, searchList, sorting)) || {};
      setUserList(content);
      setTotalPages(totalPages);
    };
    getDataUserList();
  }, [searchList, sorting]);

  const getUserList = async (
    page = 1,
    size = 10,
    search = "",
    sorting = "DESC"
  ) => {
    if (cookieToken.accessToken) {
      const response = await apiGatewayInstance.get(
        `/api/register/list?page=${page}&size=${size}&search=${search}&sort=${sorting}`,
        { headers: { "X-Auth-Token": cookieToken.accessToken } }
      );
      return response.data ? response.data : [];
    }
  };

  const onClickPagination = async (page) => {
    const { content = [], totalPages = 0 } =
      (await getUserList(page, 10, searchList)) || {};
    setUserList(content);
    setTotalPages(totalPages);
    setCurrentPage(page);
  };

  const handleDeleteUser = () => {
    const formData = new FormData();
    formData.append("id", id);

    apiGatewayInstance
      .post("/api/register/delete", formData, {
        headers: {
          "X-Auth-Token": cookieToken.accessToken,
        },
      })
      .then(() => {
        window.location.reload();
      })
      .catch((error) => {
        console.error(error);
      });
  };

  const handleConfirm = (id) => {
    setShowModal(true);
    setId(id);
  };

  const handleCancle = () => {
    setShowModal(false);
  };

  const handleExport = () => {
    apiGatewayInstance
      .get("/api/register/export", {
        headers: {
          "X-Auth-Token": cookieToken.accessToken,
        },
      })
      .then((response) => {
        if (response.data) {
          window.location.href = `${pathExportUrl}${response.data}`;
        }
      })
      .catch((error) => {
        console.error(error);
      });
  };

  return (
    <BackgroundAdmin>
      <DesktopOnly>
        <HeaderContent />
      </DesktopOnly>
      <TabHeader>
        <span>ทะเบียนผู้ป่วย</span>
        {cookieToken.roleName === "administrator" && (
          <Link href="/admin/register-list-add" passHref>
            <ButtonTheme>
              <Image src={logoRegisterNew} alt={`logoRegisterNew`}/>
              <span>ลงทะเบียนผู้ป่วยใหม่</span>
            </ButtonTheme>
          </Link>
        )}
      </TabHeader>
      <div className="p-24">
        <ModalConfirmContent
          isOpenModal={showModal}
          title={`ต้องการลบข้อมูลผู้ป่วยหรือไม่`}
          status={`delete`}
          confirmModal={() => handleDeleteUser()}
          closeModal={() => handleCancle()}
        />
        <WrapperTable>
          <TableContent
            showExport={cookieToken.roleName === "administrator"}
            onClickExport={() => handleExport()}
            placeholder={"ชื่อ นามสกุล เลขบัตรประชาชน"}
            value={searchList}
            setValue={setSearchList}
            sorting={sorting}
            setSorting={setSorting}
          />
          <DesktopOnly>
            <TableStyle>
              <table>
                <thead>
                  <tr>
                    <td>ID</td>
                    <td>ชื่อ - นามสกุล</td>
                    <td>เลขบัตรประชาชน</td>
                    <td>วัน/เดือน/ปีเกิด</td>
                    <td>เบอร์โทรศัพท์</td>
                    <td>จัดการ</td>
                  </tr>
                </thead>
                <tbody>
                  {userList &&
                    userList.length > 0 &&
                    userList.map((item, index) => (
                      <tr key={index}>
                        <td>{item.id}</td>
                        <td>
                          {item.firstName} {item.lastName}
                        </td>
                        <td>{item.citizenId}</td>
                        <td>{moment(item.birthday).format("DD/MM/YYYY")}</td>
                        <td>{item.telephone}</td>
                        <td>
                          <div className="row m-auto">
                            <a href={cookieToken.roleName === "administrator" ? `/admin/register-list-edit?id=${item.id}` : `/admin/register-list-info?id=${item.id}`}>
                              <BackgroundEdit className="mr-8">
                                <Image src={logoEdit} />
                              </BackgroundEdit>
                            </a>
                            {cookieToken.roleName === "administrator" && (
                              <BackgroundDelete
                                onClick={() => handleConfirm(item.id)}
                              >
                                <Image src={logoDelete} />
                              </BackgroundDelete>
                            )}
                          </div>
                        </td>
                      </tr>
                    ))}
                </tbody>
              </table>
            </TableStyle>
          </DesktopOnly>
          <MobileOnly>
            <TableMobileStyle>
              {userList &&
                userList.length > 0 &&
                userList.map((item, index) => (
                  <div className="bg-box row" key={index}>
                    <div className="col-9">
                      <div>
                        <div className="title">ชื่อ - นามสกุล</div>
                        <div className="text">
                          {item.firstName} {item.lastName}
                        </div>
                      </div>
                      <div className="mt-18">
                        <div className="title">เลขบัตรประชาชน</div>
                        <div className="text">{item.citizenId}</div>
                      </div>
                      <div className="mt-18">
                        <div className="title">วัน/เดือน/ปีเกิด</div>
                        <div className="text">
                          {moment(item.birthday).format("DD/MM/YYYY")}
                        </div>
                      </div>
                      <div className="mt-18">
                        <div className="title">เบอร์โทรศัพท์</div>
                        <div className="text">{item.telephone}</div>
                      </div>
                    </div>
                    <div className="col-3">
                      <div className="center-manage">
                        <div className="title">จัดการ</div>
                        <div className="row">
                          <a href={cookieToken.roleName === "administrator" ? `/admin/register-list-edit?id=${item.id}` : `/admin/register-list-info?id=${item.id}`}>
                            <BackgroundEdit className="mr-8">
                              <Image src={logoEdit} />
                            </BackgroundEdit>
                          </a>
                          {cookieToken.roleName === "administrator" && (
                            <BackgroundDelete
                              onClick={() => handleConfirm(item.id)}
                            >
                              <Image src={logoDelete} />
                            </BackgroundDelete>
                          )}
                        </div>
                      </div>
                    </div>
                  </div>
                ))}
            </TableMobileStyle>
          </MobileOnly>
        </WrapperTable>
        <div className="mt-22">
          <PaginationContent
            currentPage={currentPage}
            totalPages={totalPages}
            onClickPagination={onClickPagination}
          />
        </div>
      </div>
    </BackgroundAdmin>
  );
};

// export async function getServerSideProps({ req }) {

//     const { cookie = '' } = req.headers

//     let Cookies = {}

//     cookie && cookie.split(';').forEach(function (cookie) {
//         let parts = cookie.split('=');
//         Cookies[parts[0].trim()] = (parts[1] || '').trim();
//     })

//     const response = await apiGatewayInstance.get('/api/register/list?page=1&size=10', { 'headers': { 'X-Auth-Token': Cookies.accessToken } })

//     let data = []

//     if (response.data) {
//         data = response.data.content ? response.data.content : []
//     }

//     return { props: { tableBodyData: data } }
// }

export default RegisterListScreen;
