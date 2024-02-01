import React from 'react'
import Image from 'next/image'
import headerImage from '../../../../static/images/header-bg.jpg'
import { HeaderBanner } from './style'

const HeaderBannerContent = () => {
    return (
        <HeaderBanner>
            <div className='img-bg'>
                <Image
                    src={headerImage}
                    layout="fill"
                    className='img-bg'
                    objectFit="cover" />
                <div className='text-header-style'>
                    <div className='text-header-title'>ลงทะเบียนผู้ป่วย</div>
                    <div className='text-header-subtitle'>มูลนิธิโรคกล้ามเนื้ออ่อนแรง</div>
                    <div className='text-header-breadcrumb'>หน้าหลัก / <span>ลงทะเบียนผู้ป่วย</span></div>
                </div>
            </div>
        </HeaderBanner>
    )
}

export default HeaderBannerContent