import '../styles/globals.css'
import '../styles/sidepanel.css'
import 'react-datepicker/dist/react-datepicker.css'
import '@react-pdf-viewer/core/lib/styles/index.css';
import Head from 'next/head'
import { useRouter } from 'next/router'
import { NavbarContent, MenuContent } from '../components/elements'

function MyApp({ Component, pageProps }) {
  const router = useRouter();
  return (
    <>
      <Head>
        <title>{!router.pathname.startsWith("/admin") ? `F)E)N)D) Web Register` : `F)E)N)D) Web Admin`} </title>
        <meta name="description" content={!router.pathname.startsWith("/admin") ? `F)E)N)D) Web Register` : `F)E)N)D) Web Admin`} />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      </Head>
      {router.pathname === "/admin/register-list" || router.pathname === "/admin/register-setting" ||
        router.pathname === "/admin/register-list-add" || router.pathname === "/admin/register-setting-add" ||
        router.pathname === "/admin/register-list-edit" || router.pathname === "/admin/register-setting-edit" ||
        router.pathname === "/admin/register-list-info"
        ? (
          <NavbarContent>
            <Component {...pageProps} />
          </NavbarContent>
        )
        : (
          <>
            {
              router.pathname !== "/admin" ? (
                < MenuContent >
                  <Component {...pageProps} />
                </MenuContent>
              )
                : (
                  <Component {...pageProps} />
                )
            }
          </>
        )
      }
    </>
  )
}

export default MyApp
