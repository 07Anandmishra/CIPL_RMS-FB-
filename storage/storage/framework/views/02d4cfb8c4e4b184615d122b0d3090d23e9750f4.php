<!DOCTYPE html>
<html>
<head>
<style>
        .disclaimer {
            font-size: 10px;
            color: grey;
            margin-top: 20px;
        }
    </style>
    <title>Application Received</title>
</head>
<body>
    <p>Dear <?php echo e($candidate->Name); ?>,</p>
    
    <p>Thank you for submitting your application for the <?php echo e($candidate->JobTitle); ?> at CIPL. Your profile has been successfully received and will be reviewed by our Talent Acquisition Team.</p>

    <p>Should your qualifications match our current requirements, we will contact you to discuss the next steps in the selection process.</p>

    <p>We invite you to learn more about us:</p>
    <ul>
        <li>Visit our Career Portal <<link>> to explore opportunities.</li>
        <li>Connect with us on LinkedIn <a href="https://www.linkedin.com/company/corporateinfotech/about/">here</a> for company updates and insights.</li>

        <li>Follow us on Facebook <a href="https://www.facebook.com/CiplCorporateInfotech/">here</a> and Twitter <a href="https://x.com/ciplltd?lang=en">here</a> for news and events.</li>

    </ul>

    <p>We appreciate your interest in joining our team. If you have any questions or need further assistance, please feel free to reach out to us at tahelpdesk@cipl.org.in</p>

    <p>Thank you once again for considering a career with CIPL – Corporate Infotech Private Limited.</p>

    <p>Best Regards,</p>
    <p>The CIPL Team</p>
    <div class="disclaimer">
        <p>Disclaimer:</p>
        <p>This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>
        <p>For any concerns, please reach out to us at tahelpdesk@cipl.org.in.</p>
    </div>
</body>
</html>
<?php /**PATH D:\RMS_V2\RMSAPI_V2\resources\views/emails/candidate_shortlisted.blade.php ENDPATH**/ ?>