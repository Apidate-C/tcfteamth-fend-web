import React from 'react'
import { FooterBanner } from './style'
import Image from 'next/image'
import { ButtonTheme } from '../../../styles/global'

import footerImage from '../../../../static/images/footer-bg.jpg'
import iconHeart from '../../../../static/images/icon-heart.png'

const FooterBannerContent = () => {

    return (
        <FooterBanner>
            <Image
                src={footerImage}
                layout="fill"
            />
            <div className='text-footer-style'>
                <div className='icon-style'>
                    <Image src={iconHeart} />
                </div>
                <div className='text-footer'>ร่วมบริจาค</div>
                <div className='text-footer'>เพื่อช่วยเด็ก</div>
                <div className='text-footer'>กล้ามเนื้ออ่อนแรง</div>
                <ButtonTheme style={{ margin: 'auto' }}>
                    <a href='https://fendfoundation.com/web/donate-form.php?lang=th'>
                        <span>บริจาคเลย</span>
                    </a>
                </ButtonTheme>
            </div>
        </FooterBanner>
    )
}

export default FooterBannerContent