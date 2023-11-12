import React from 'react'
import Layout from '../components/Layout/Layout'
import { Box, Typography } from '@mui/material'

const About = () => {
  return (
    <Layout>
        <Box sx={{my:15,
            textAlign:"center",
            p:2,
            "& h4":{
              fontWeight:'bold',
              my:2,
              fontSize:'2rem'
            },
            "& p":{
                textAlign:"justify",
            },
            "@media (max-width:600px)":{
              mt:0,
              height:"device-height",
              scrollbarWidth:'none',
              "& h4":{
                fontSize:'1.4rem'
              }
            }
        }}>
          <Typography variant='h4'>
            Welcome to My restaurant
          </Typography>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque excepturi iusto, harum eligendi enim fugiat distinctio dignissimos neque laboriosam mollitia, dolores ipsum, aliquam non ipsa obcaecati suscipit quo officia dolorem.</p>
          <br />
          <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque praesentium reiciendis ullam quam laborum doloribus, id natus blanditiis totam placeat, veniam eum quidem deserunt asperiores sequi laudantium? Culpa, dolore. Rerum molestias illum sit? Iure cupiditate hic sequi quibusdam praesentium ipsum nisi porro fuga velit quisquam possimus et ex sapiente eos, optio cum eveniet, nemo est. Ullam quod nulla fugit est itaque nesciunt hic dolorum facilis officiis aspernatur dolor dolorem quasi voluptatibus vero delectus dolore maxime eius, tempora quidem nihil unde accusantium commodi fuga! Qui iusto asperiores, corrupti quidem quam aspernatur nihil nobis quibusdam eaque et beatae nulla, fuga reiciendis eligendi.</p>
        </Box>
    </Layout>
  )
}

export default About