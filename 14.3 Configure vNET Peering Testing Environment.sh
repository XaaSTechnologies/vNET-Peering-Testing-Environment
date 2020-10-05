{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww12760\viewh15360\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs36 \cf0 az group create --name RG-14-CONNECT-vNETs --location westeurope\
\
az network vnet create \\\
    --resource-group RG-14-CONNECT-vNETs \\\
    --name vNET-A \\\
    --address-prefix 10.0.0.0/16 \\\
    --subnet-name Subnet-01-vNET-A \\\
    --subnet-prefix 10.0.0.0/24 \\\
    --location westeurope\
\
az network vnet create \\\
    --resource-group RG-14-CONNECT-vNETs \\\
    --name vNET-B \\\
    --address-prefix 10.1.0.0/16 \\\
    --subnet-name Subnet-01-vNET-B \\\
    --subnet-prefix 10.1.0.0/24 \\\
    --location westeurope\
\
az network vnet create \\\
    --resource-group RG-14-CONNECT-vNETs \\\
    --name vNET-C \\\
    --address-prefix 10.2.0.0/16 \\\
    --subnet-name Subnet-01-vNET-C \\\
    --subnet-prefix 10.2.0.0/24 \\\
    --location northeurope\
\
\pard\pardeftab720\partightenfactor0
\cf0 az vm create \\\
    --resource-group RG-14-CONNECT-vNETs \\\
    --no-wait \\\
    --name VM-A \\\
    --location westeurope \\\
    --vnet-name vNET-A \\\
    --subnet Subnet-01-vNET-A \\\
    --image UbuntuLTS \\\
    --size Standard_B1s \\\
    --admin-username adminuser \\\
    --admin-password adminadmin123!\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
\pard\pardeftab720\partightenfactor0
\cf0 az vm create \\\
    --resource-group RG-14-CONNECT-vNETs \\\
    --no-wait \\\
    --name VM-B \\\
    --location westeurope \\\
    --vnet-name vNET-B \\\
    --subnet Subnet-01-vNET-B \\\
    --image UbuntuLTS \\\
    --size Standard_B1s \\\
    --admin-username adminuser \\\
    --admin-password adminadmin123!\
\
az vm create \\\
    --resource-group RG-14-CONNECT-vNETs \\\
    --no-wait \\\
    --name VM-C \\\
    --location northeurope \\\
    --vnet-name vNET-C \\\
    --subnet Subnet-01-vNET-C \\\
    --image UbuntuLTS \\\
    --size Standard_B1s \\\
    --admin-username adminuser \\\
    --admin-password adminadmin123!\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
}