<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document Upload Link</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            color: #333;
            
            margin: 0;
            padding: 0;
        }
        .header, .footer {
            background-color:#F7F7F7;
            padding: 10px;
            text-align: center;
            color: #8B8C92;
        }
        .header a, .footer a {
            color: #8B8C92;
            text-decoration: none;
            font-weight: bold;
            font-size: 24px;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            
        }
        .content {
            padding: 20px;
			color:#727475;
			font-size:14px;
        }
        .content h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }
        .content p {
            line-height: 1.6;
        }
        .content ul {
            list-style: disc;
            padding-left: 20px;
        }
        .content ul li {
            margin-bottom: 5px;
			color:#B0B2B4;
			font-size:12px;
        }
        .button {
            display: inline-block;
            font-size: 14px;
            font-weight: bold;
            color: #ffffff;
            background-color: #549FF0;
            padding: 10px 18px;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 0px;
			margin-left:150px;
        }
		.disclaimer {
            font-size: 10px;
            color: grey;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <a href="<?php echo e($details['url']); ?>"><?php echo e(config('app.name')); ?></a>
    </div>
    <div class="container">
        <div class="content">
            <h2>Congratulations!</h2>
            <p>We are happy to inform you that you have been selected for the <strong><?php echo e($details['position']); ?></strong> at CIPL (Corporate Infotech Private Limited).</p>
            <p>Congratulations on your Selection!</p>
            <p>To proceed with the Onboarding Process, kindly upload the below mentioned documents:</p>
            <ul>
                <li>All Educational Documents (10th, 12th, Graduation, PG)</li>
                <li>Last 3 months salary slips</li>
                <li>Bank statement (last 6 months)</li>
                <li>Appointment letter from your current company</li>
                <li>Passport scan copy</li>
                <li>Cancelled cheque of your Bank Account</li>
                <li>PF, UAN, ESIC No (if applicable)</li>
                <li>Relieving Letter from all previous employers</li>
                <li>Scanned Passport Size Photograph</li>
                <li>PAN and Aadhar Copy (Mandatory)</li>
                <li>Certificates (if any)</li>
                <li>Updated CV</li>
            </ul>
            <p>Kindly click on the button below to upload the necessary documents:</p>
            <a href="<?php echo e($details['url']); ?>" class="button">Document Upload Link</a>
            <p>We look forward to welcoming you to the CIPL team and are excited to have you onboard.</p>
        <div class="disclaimer">
            <p class="disclaimer">Disclaimer:</p>
            <p class="disclaimer">This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>
            <p class="disclaimer">For any concerns, please reach out to us at ta@cipl.org.in.</p>
        </div>
        </div>
    </div>	
	<div class="footer">
        <a href="<?php echo e($details['url']); ?>"><?php echo e(config('app.name')); ?></a>
        <p>&copy; <?php echo e(date('Y')); ?></p>
    </div>
</body>
</html>
<?php /**PATH D:\RMS_V2\RMSAPI_V2\resources\views/emails/DocumentUploadMail.blade.php ENDPATH**/ ?>