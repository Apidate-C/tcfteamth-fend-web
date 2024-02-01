import React, { useEffect } from 'react'
import { useRouter } from 'next/router'


const Home = () => {
  const router = useRouter()

  useEffect(() => {
    router.push('/web/register-myself')
  }, [])

  return (
    <div>

    </div>
  )
}

export default Home
