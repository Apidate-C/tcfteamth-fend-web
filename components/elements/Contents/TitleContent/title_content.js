import React from 'react';
import { Title, LineTitle, WrapperTitle } from './style';

const TitleContent = ({ title, positionLine = 'top' }) => {
    return (
        <>
            {
                positionLine === 'top' ? (
                    <WrapperTitle>
                        <Title>
                            {title}
                        </Title>
                        <LineTitle />
                    </WrapperTitle>
                ) : null
            }
            {
                positionLine === 'bottom' ? (
                    <div>
                        <Title>
                            {title}
                        </Title>
                        {/* <LineTitle /> */}
                    </div>
                ) : null
            }
        </>
    )
}

export default TitleContent